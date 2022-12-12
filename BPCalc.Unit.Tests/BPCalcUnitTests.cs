using BPCalculator;

namespace BPCalc.Unit.Tests
{
    public class BPCalcUnitTests
    {
        [Fact]
        public void TestIfBPIsLow()
        {
            BloodPressure bp = new() { Diastolic = 53, Systolic = 85 };
            Assert.Equal(BPCategory.Low, bp.Category);
        }

        [Fact]
        public void TestIfBPIsIdeal()
        {
            BloodPressure bp = new() { Diastolic = 67, Systolic = 113 };
            Assert.Equal(BPCategory.Ideal, bp.Category);
        }

        [Fact]
        public void TestIfBPIsPreHigh()
        {
            BloodPressure bp = new() { Diastolic = 88, Systolic = 127 };
            Assert.Equal(BPCategory.PreHigh, bp.Category);
        }

        [Fact]
        public void TestIfBPIsHigh()
        {
            BloodPressure bp = new() { Diastolic = 94, Systolic = 146 };
            Assert.Equal(BPCategory.High, bp.Category);
        }

    }
}