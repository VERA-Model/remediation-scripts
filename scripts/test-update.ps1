# Test script to verify auto-indexing workflow
Write-Host "This is a test."

# trigger rebuild
# Rebuilding index
Trigger index.json rebuild test
