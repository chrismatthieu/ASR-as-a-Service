recoresult = ask $currentCall.getHeader("x-sbc-prompt"), {
   :choices => $currentCall.getHeader("x-sbc-choices")}

transfer $currentCall.getHeader("x-sbc-returnaddress"), { 
    :headers => {'x-voxeo-result' => recoresult.value}
    }