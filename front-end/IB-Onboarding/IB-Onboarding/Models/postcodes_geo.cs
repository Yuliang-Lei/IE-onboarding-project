namespace IB_Onboarding.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class postcodes_geo
    {
        public int id { get; set; }

        [StringLength(5)]
        public string postcode { get; set; }

        [StringLength(100)]
        public string suburb { get; set; }

        [StringLength(4)]
        public string state { get; set; }

        public decimal? latitude { get; set; }

        public decimal? longitude { get; set; }
    }
}
