$(document).ready(function () {

    var currentServingStorage = [];
    var speech = new SpeechSynthesisUtterance();
    var voices = window.speechSynthesis.getVoices();
    speech.default = false;
    speech.rate = 4;
    speech.pitch = 3;
    speech.voice = voices.filter(function (voice) { return voice.name == 'Google US English Male'; })[0];
    speech.lang = 'en-US'; //Also added as for some reason android devices used for testing loaded spanish language 

    $(getServingList);

    function getServingList() {
        $.getJSON('http://tfqmsservicessit.azurewebsites.net/kioskJSON.svc/getCurrentServingListJSON', null, function (currentServing) {
            console.log('Called JSON');

            for (var i = 0, len = currentServing.getCurrentServingListJSONResult.CurrentServingList.length; i < len; i++) {
                var CS = currentServing.getCurrentServingListJSONResult.CurrentServingList[i];


                if (!(CS.counterNo in currentServingStorage)) {

                    currentServingStorage[CS.counterNo] = CS.timeStamp;

                    $('#counterholder').append(
                    '<div class="col-lg-3 displaycounter">' +
                        '<div class="b-blue" id="bbl' + CS.counterNo + '">' +
                            '<div class="pull-right" style="width: 100%">' +
                                '<h1 id="queue' + CS.counterNo + '">' + CS.queueNo + '</h1>' +
                                '<hr />' +
                                '<h2 id="counter' + CS.counterNo + '" class="pull-right">Counter ' + CS.counterNo + '</h2>' +
                                '</div>' +
                                '</div>' +
                    '</div>'
                    );

                    speech.onstart = function (event) {
                        /*setInterval(function () {
                            $('#'+i.TFUserID).toggleClass("darkblue");
                        }, 1000)*/
                    }
                    speech.onend = function (event) {
                        $('#' + i.TFUserID).toggleClass("skyblue")
                    }
                }
                else if (CS.timeStamp == currentServingStorage[CS.counterNo]) {
                    //alert('same!');   
                } else {

                    currentServingStorage[CS.counterNo] = CS.timeStamp;
                    speech.text = 'Now Serving number' + CS.queueNo + ' at Counter ' + CS.counterNo;

                    console.log('#queue' + CS.counterNo + " " + "hi");
                    $('#queue' + CS.counterNo).text(CS.queueNo);
                    blink(CS.counterNo);
                    window.speechSynthesis.speak(speech);
                    speech.onstart = function (event) {

                        /*setInterval(function () {
                            $('#' + i.TFUserID).toggleClass("darkblue");
                        }, 1000)*/
                    }
                    speech.onend = function (event) {
                        $('#' + i.TFUserID).toggleClass("skyblue")
                    }
                }
            }
        }).complete(function () {
            setTimeout(getServingList, 5000);
        });

    }

    function speakNow(counterNo, queueNo) {
        speech.text = 'Now Serving number' + queueNo + ' at Counter ' + counterNo;
        window.speechSynthesis.speak(speech);
    }

    function blink(counterNo) {
        setInterval(function () {
            console.log("hi from setinterval " + counterNo);
            $('#bbl' + counterNo).toggleClass("darkblue");
        }, 1000);
    }

});

