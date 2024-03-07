using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using IB_Onboarding.Models;

namespace IB_Onboarding.Controllers
{
    public class postcodes_geoController : Controller
    {
        private locationModel db = new locationModel();

        // GET: postcodes_geo
        public ActionResult Index(string searchString)
        {
            if (String.IsNullOrEmpty(searchString))
            {
                // Return empty model or null when no search is performed
                return View(new List<postcodes_geo>());
            }
            else
            {
                var postcodes = db.postcodes_geo.Where(s => s.suburb.Contains(searchString)
                                                            || s.postcode.Contains(searchString));
                return View(postcodes.ToList());
            }
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

    }
}
