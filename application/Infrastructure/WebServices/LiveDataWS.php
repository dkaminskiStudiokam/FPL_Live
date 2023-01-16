<?php

namespace application\Infrastructure\WebServices;

class LiveDataWS
{
    public function getLiveData(): array
    {
        // todo narazie kolejke ustawiam na sztywno, trzeba bedzie w pozniejszym etapie jakos to zrobic automatycznie
        $liveDataUrl = "https://fantasy.premierleague.com/api/event/20/live/";
        $jsonLiveData = file_get_contents($liveDataUrl);
        return json_decode($jsonLiveData, true);
    }
}
