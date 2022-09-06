namespace HelloMicroservices.tkh
{
    using System;
    using Microsoft.AspNetCore.Mvc;

    public class CurrentDateTimeController: ControllerBase
    {
        [HttpGet("/")]
        public object Get() => DateTime.UtcNow;
    }
}
