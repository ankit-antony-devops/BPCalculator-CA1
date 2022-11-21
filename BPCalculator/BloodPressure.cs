using System;
using System.ComponentModel.DataAnnotations;

namespace BPCalculator
{
    // BP categories
    public enum BPCategory
    {
        [Display(Name="Low Blood Pressure")] Low,
        [Display(Name="Ideal Blood Pressure")]  Ideal,
        [Display(Name="Pre-High Blood Pressure")] PreHigh,
        [Display(Name ="High Blood Pressure")]  High
    };

    public enum BPSuggestTreatment
    {
        [Display(Name = "Use more salt\n, Drink more water\n, Wear compression stockings\n, Medications")] Low,
        [Display(Name = "Proud to be healthy!")] Ideal,
        [Display(Name = "Excercise daily\n, Make healthy food choices")] PreHigh,
        [Display(Name = "Please visit your nearest GP for a body checkup\n Doctor365: 0818000365")] High
    };
    
    public class BloodPressure
    {
        public const int SystolicMin = 70;
        public const int SystolicMax = 190;
        public const int DiastolicMin = 40;
        public const int DiastolicMax = 100;

        [Range(SystolicMin, SystolicMax, ErrorMessage = "Invalid Systolic Value")]
        public int Systolic { get; set; }                       // mmHG

        [Range(DiastolicMin, DiastolicMax, ErrorMessage = "Invalid Diastolic Value")]
        public int Diastolic { get; set; }                      // mmHG

        // calculate BP category
        public BPCategory Category
        {
            get
            {
                if (Diastolic <= 60 && Systolic <= 90)
                {
                    return BPCategory.Low;
                }

                else if (Diastolic <= 80 && Systolic <= 120)
                {
                    return BPCategory.Ideal;
                }

                else if (Diastolic <= 90 && Systolic <= 140)
                {
                    return BPCategory.PreHigh;
                }

                else if (Diastolic <= 100 && Systolic <= 190)
                {
                    return BPCategory.High;
                }
                {
                    throw new Exception("Input value is invalid");
                }
            }
        }
        
        public BPSuggestTreatment SuggestTreatment
        {
            get
            {
                switch (Category)
                {
                    case BPCategory.Low:
                        return BPSuggestTreatment.Low;
                    case BPCategory.High:
                        return BPSuggestTreatment.High;
                    case BPCategory.Ideal:
                        return BPSuggestTreatment.Ideal;
                    case BPCategory.PreHigh:
                        return BPSuggestTreatment.PreHigh;
                    default:
                        throw new Exception("Invalid range");
                }
            }
        }
    }
}
