using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace IB_Onboarding.Models
{
    public partial class locationModel : DbContext
    {
        public locationModel()
            : base("name=locationModel")
        {
        }

        public virtual DbSet<postcodes_geo> postcodes_geo { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<postcodes_geo>()
                .Property(e => e.postcode)
                .IsUnicode(false);

            modelBuilder.Entity<postcodes_geo>()
                .Property(e => e.suburb)
                .IsUnicode(false);

            modelBuilder.Entity<postcodes_geo>()
                .Property(e => e.state)
                .IsUnicode(false);

            modelBuilder.Entity<postcodes_geo>()
                .Property(e => e.latitude)
                .HasPrecision(6, 3);

            modelBuilder.Entity<postcodes_geo>()
                .Property(e => e.longitude)
                .HasPrecision(6, 3);
        }
    }
}
