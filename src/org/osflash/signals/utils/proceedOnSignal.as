package org.osflash.signals.utils
{
    import org.flexunit.async.Async;
    import org.osflash.signals.Signal;
    /**
     * Delegate function for <code>Async.proceedOnSignal()</code>.
     * @author eidiot
     */
    public function proceedOnSignal(testCase:Object, signal:Signal,
                                    timeout:int = 500,
                                    timeoutHandler:Function = null):void
    {
        Async.proceedOnEvent(testCase, new SignalAsync(signal),
                             SignalAsyncEvent.CALLED, timeout, timeoutHandler);
    }
}