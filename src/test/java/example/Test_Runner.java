package example;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class Test_Runner {

    @Test
    void testParallel() {
        final Results results = Runner.path("classpath:example").parallel(10);
        assertTrue(results.getFailCount() == 0, results.getErrorMessages());
    }
}