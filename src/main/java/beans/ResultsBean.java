
package beans;

import java.io.Serial;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class ResultsBean implements Serializable {
    @Serial
    private static final long serialVersionUID = 1L;
    private List<Result> results;

    public ResultsBean() {
        this.results = new ArrayList<>();
    }

    public void addResult(Result result) {
        this.results.add(result);
    }

    public List<Result> getResults() {
        return results;
    }

    public static class Result implements Serializable {
        @Serial
        private static final long serialVersionUID = 2L;
        private String x;
        private String y;
        private String r;
        private boolean isHit;
        private String executionTime;

        public Result(String x, String y, String r, boolean isHit, String executionTime) {
            this.x = x;
            this.y = y;
            this.r = r;
            this.isHit = isHit;
            this.executionTime = executionTime;
        }

        public String getX() {
            return x;
        }

        public void setX(String x) {
            this.x = x;
        }

        public String getY() {
            return y;
        }

        public void setY(String y) {
            this.y = y;
        }

        public String getR() {
            return r;
        }

        public void setR(String r) {
            this.r = r;
        }

        public boolean getIsHit() {
            return isHit;
        }

        public void setIsHit(boolean hit) {
            isHit = hit;
        }
        public String getExecutionTime() {
            return executionTime;
        }
        public void setExecutionTime(String executionTime) {
            this.executionTime = executionTime;
        }


        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass() != o.getClass()) return false;
            Result result = (Result) o;
            return isHit == result.isHit &&
                    x.equals(result.x) &&
                    y.equals(result.y) &&
                    r.equals(result.r) &&
                    executionTime.equals(result.executionTime);
        }

        @Override
        public int hashCode() {
            return Objects.hash(x, y, r, isHit, executionTime);
        }

        @Override
        public String toString() {
            return "Result{" +
                    "x='" + x + '\'' +
                    ", y='" + y + '\'' +
                    ", r='" + r + '\'' +
                    ", isHit=" + isHit + '\'' +
                    ", executionTime" + executionTime +
                    '}';
        }
    }
}
