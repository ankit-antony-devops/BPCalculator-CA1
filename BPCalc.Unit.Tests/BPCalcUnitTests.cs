using BPCalculator;

namespace BPCalc.Unit.Tests
{
    public class BPCalcUnitTests
    {
        [Fact]
        public void TestIfBPLow()
        {
            BloodPressure bloodPressure = new() { Diastolic = 50, Systolic = 79 };
            Assert.Equal(BPCategory.Low, bloodPressure.Category);
        }

        [Fact]
        public void TestIfBPIdeal()
        {
            BloodPressure bloodPressure = new() { Diastolic = 75, Systolic = 100 };
            Assert.Equal(BPCategory.Ideal, bloodPressure.Category);
        }

        [Fact]
        public void TestIfBPPreHigh()
        {
            BloodPressure bloodPressure = new() { Diastolic = 86, Systolic = 138 };
            Assert.Equal(BPCategory.PreHigh, bloodPressure.Category);
        }

        [Fact]
        public void TestIfBPHigh()
        {
            BloodPressure bloodPressure = new() { Diastolic = 92, Systolic = 159 };
            Assert.Equal(BPCategory.High, bloodPressure.Category);
        }

    }
}