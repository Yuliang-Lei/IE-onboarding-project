using IB_Onboarding.Controllers;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Web.Mvc;

namespace unitTest_IB_Onboarding
{
    [TestClass]
    public class HomeTest
    {
        HomeController homeController = new HomeController();

        [TestMethod]
        public void TestReminder()
        {
            var result = homeController.Reminder() as ViewResult;
            Assert.IsNotNull(result);
        }

        [TestMethod]
        public void TestTips()
        {
            var result = homeController.Tips() as ViewResult;
            Assert.IsNotNull(result);
        }
    }
}