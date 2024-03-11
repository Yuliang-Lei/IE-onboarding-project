using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using IB_Onboarding.Models;
using IB_Onboarding.Controllers;
using System.Data.Entity;

[TestClass]
public class LocationTest
{
    private Mock<locationModel> mockContext;
    private Mock<DbSet<postcodes_geo>> mockSet;
    private List<postcodes_geo> data;

    [TestInitialize]
    public void Initialize()
    {
        // Mock data
        data = new List<postcodes_geo>
        {
            new postcodes_geo { id = 1, postcode = "200", suburb = "Australian National University", state = "ACT", latitude = -35.280m, longitude = 149.120m },
            // Add more data as per your requirement
        };

        // Mock DbSet
        mockSet = new Mock<DbSet<postcodes_geo>>();
        mockSet.As<IQueryable<postcodes_geo>>().Setup(m => m.Provider).Returns(data.AsQueryable().Provider);
        mockSet.As<IQueryable<postcodes_geo>>().Setup(m => m.Expression).Returns(data.AsQueryable().Expression);
        mockSet.As<IQueryable<postcodes_geo>>().Setup(m => m.ElementType).Returns(data.AsQueryable().ElementType);
        mockSet.As<IQueryable<postcodes_geo>>().Setup(m => m.GetEnumerator()).Returns(data.GetEnumerator());

        // Mock DbContext
        mockContext = new Mock<locationModel>();
        mockContext.Setup(c => c.postcodes_geo).Returns(mockSet.Object);
    }

    [TestMethod]
    public void Index_ReturnsView_WithNoSearchString()
    {
        var controller = new postcodes_geoController(mockContext.Object);

        var result = controller.Index(null) as ViewResult;

        Assert.IsNotNull(result);
        var model = result.Model as List<postcodes_geo>;
        Assert.AreEqual(0, model.Count);
    }

    [TestMethod]
    public void Index_ReturnsView_WithSearchString()
    {
        var controller = new postcodes_geoController(mockContext.Object);

        var result = controller.Index("Australian National University") as ViewResult;

        Assert.IsNotNull(result);
        var model = result.Model as List<postcodes_geo>;
        Assert.IsTrue(model.Any(m => m.suburb.Contains("Australian National University")));
    }

    [TestMethod]
    public void Index_ReturnsEmptyView_WithNonMatchingSearchString()
    {
        var controller = new postcodes_geoController(mockContext.Object);

        var result = controller.Index("NonExistingSuburb") as ViewResult;

        Assert.IsNotNull(result);
        var model = result.Model as List<postcodes_geo>;
        Assert.IsNotNull(model);
        Assert.AreEqual(0, model.Count); // Expecting an empty list for non-matching search string
    }

    [TestMethod]
    public void Index_ReturnsCorrectData_WithValidPostcode()
    {
        var controller = new postcodes_geoController(mockContext.Object);

        string validPostcode = "200"; // Assuming "200" is a valid postcode in your mock data
        var result = controller.Index(validPostcode) as ViewResult;

        Assert.IsNotNull(result);
        var model = result.Model as List<postcodes_geo>;
        Assert.IsNotNull(model);
        Assert.IsTrue(model.Any(m => m.postcode == validPostcode));
    }

    [TestMethod]
    public void Index_ReturnsEmptyView_WithInvalidPostcode()
    {
        var controller = new postcodes_geoController(mockContext.Object);

        string invalidPostcode = "9999"; // Assuming "9999" is not a valid postcode in your mock data
        var result = controller.Index(invalidPostcode) as ViewResult;

        Assert.IsNotNull(result);
        var model = result.Model as List<postcodes_geo>;
        Assert.IsNotNull(model);
        Assert.AreEqual(0, model.Count); // Expecting an empty list for invalid postcode
    }
}
