Write-Host "-- Liveness --"
try { (Invoke-WebRequest http://localhost:4000/health/liveliness -UseBasicParsing).Content } catch { "FAILED" }

Write-Host "-- Readiness --"
try { (Invoke-WebRequest http://localhost:4000/health/readiness -UseBasicParsing).Content } catch { "FAILED" }

Write-Host "-- Models --"
try { (Invoke-WebRequest http://localhost:4000/health -UseBasicParsing).Content } catch { "FAILED" }