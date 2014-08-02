$(document).ready(function () {

    var currentServingStorage = [];
    //var speech = new SpeechSynthesisUtterance();
    var speech = [];
    var voices = window.speechSynthesis.getVoices();
    //speech.default = false;
    //speech.rate = 4;
    //speech.pitch = 3;
    //speech.voice = voices.filter(function (voice) { return voice.name == 'Google US English Male'; })[0];
    //speech.lang = 'en-US'; //Also added as for some reason android devices used for testing loaded spanish language 

    var counterinterval;

    $(getServingList);

    function getServingList() {
        $.getJSON('http://tfqmsservicessit.azurewebsites.net/kioskJSON.svc/getCurrentServingListJSON', null, function (currentServing) {
            console.log('Called JSON');
            if (currentServing.getCurrentServingListJSONResult.CurrentServingList != null) {
                speech = [];
                for (var i = 0, len = currentServing.getCurrentServingListJSONResult.CurrentServingList.length; i < len; i++) {
                    var CS = currentServing.getCurrentServingListJSONResult.CurrentServingList[i];
                    if (!(CS.counterNo in currentServingStorage)) {

                        currentServingStorage[CS.counterNo] = CS.timeStamp;
                        speech[i] = new SpeechSynthesisUtterance();
                        var voices = window.speechSynthesis.getVoices();
                        speech[i].default = false;
                        speech[i].rate = 1;
                        speech[i].pitch = 1;
                        speech[i].voice = voices.filter(function (voice) { return voice.name == 'Google UK English Female'; })[0];
                        speech[i].lang = 'en-BR'; //Also added as for some reason android devices used for testing loaded spanish language 
                        speech[i].text = 'Now Serving number' + CS.queueNo + ' at Counter ' + CS.counterNo;

                        $('#counterholder').append(
                        '<div class="col-lg-3 displaycounter" id="' + CS.counterNo + '">' +
                            '<div class="b-blue" id="bbl' + CS.counterNo + '">' +
                                '<div class="pull-right" style="width: 100%">' +
                                    '<h1 id="queue' + CS.counterNo + '">' + CS.queueNo + '</h1>' +
                                    '<hr />' +
                                    '<h2 id="counter' + CS.counterNo + '" class="pull-right">Counter ' + CS.counterNo + '</h2>' +
                                    '</div>' +
                                    '</div>' +
                        '</div>'
                        );

                        //blink(CS.counterNo);
                        //sortChildrenDivsById('#counterholder');
                        var u;

                        speechcheck(speech[i], CS.counterNo, CS.queueNo);

                        window.speechSynthesis.speak(speech[i]);
                    }
                    else if (CS.timeStamp == currentServingStorage[CS.counterNo]) {
                        //alert('same!');

                    } else {

                        currentServingStorage[CS.counterNo] = CS.timeStamp;
                        speech[i] = new SpeechSynthesisUtterance();
                        var voices = window.speechSynthesis.getVoices();
                        speech[i].default = false;
                        speech[i].rate = 1;
                        speech[i].pitch = 1;
                        speech[i].voice = voices.filter(function (voice) { return voice.name == 'Google UK English Female'; })[0];
                        speech[i].lang = 'en-BR'; //Also added as for some reason android devices used for testing loaded spanish language 
                        speech[i].text = 'Now Serving number' + CS.queueNo + ' at Counter ' + CS.counterNo;

                        console.log('#queue' + CS.queueNo + " " + "hi");
                        $('#queue' + CS.counterNo).text(CS.queueNo);
                        //var u = setInterval(function () {
                        //    console.log("hi from setinterval");
                        //    $('#bbl' + CS.counterNo).toggleClass("darkblue");
                        //}, 1000);

                        speechcheck(speech[i], CS.counterNo, CS.queueNo);

                        //speech[i].onstart = function (event) {
                        //    //blink(CS.counterNo);
                        //    //console.log("hi from setintervalx" + CS.counterNo);
                        //    //setInterval(function () {
                        //    //    console.log("hi from setinterval" + CS.counterNo);
                        //    //    $('#bbl' + CS.counterNo).toggleClass("darkblue");
                        //    //}, 1000);
                        //}
                        //speech[i].onend = function (event) {
                        //    clearInterval(u);
                        //}
                        window.speechSynthesis.speak(speech[i]);
                    }
                }
            } setTimeout(getServingList, 5000);
            //}).done(function () {
            //    setTimeout(getServingList, 5000);
        }).fail(function () {
            console.log('No Internet');
            setTimeout(getServingList, 5000);
        });

    }

    function blink(counterNo) {
        setInterval(function () {
            console.log("hi from setinterval " + counterNo);
            $('#bbl' + counterNo).toggleClass("darkblue");
        }, 1000);
    }


    function speechcheck(speech2, counterNo, queueNo) {
        var u;
        speech2.onstart = function (event) {
            console.log("speech has started " + counterNo);
            $('#bbl' + counterNo).toggleClass("darkblue");
            //$('#modalholder').append('<h1>' + counterNo + '-' + queueNo + '</h1>');

            $('#queueNo').text(queueNo);
            $('#counterNo').text(counterNo);
            $('#myModal').modal("toggle");
            //$('#myModal').modal("show").on('hide', function () {
            //    $('#myModal').modal('hide')
            //});
        }
        speech2.onend = function (event) {
            console.log("speech has ended " + counterNo);
            $('.displaycounter .darkblue').removeClass('darkblue');
            $('#myModal').modal("toggle");
            //$('#myModal').modal("hide").on('show', function () {
            //    $('#myModal').modal('show')
            //});
        }
    }

    function sortChildrenDivsById(parentId) {
        var parent = document.getElementById(parentId);
        var children = parent.getElementsByTagName("div");
        var ids = [], i, len;
        for (i = 0, len = children.length; i < len; i++) {
            ids.push(parseInt(children[i].id.replace(/^.*_/g, ""), 10));
        }
        ids.sort(function (a, b) { return (a - b); });
        for (i = 0, len = ids.length; i < len; i++) {
            parent.appendChild(document.getElementById("dv_" + ids[i]));
        }
    }
});

//window.onbeforeunload = function () {
//    return "Do you really want to close?";
//};
