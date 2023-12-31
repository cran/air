test_that("HAPPY: whatis returns results", {
  vcr::use_cassette("whatis-happy-return-results", {
    good <- with_stubbed_credentials({
      with_stubbed_credentials({
        air::whatis("paste0(vector1, vector2)") |> suppressMessages()
      })
    })
  })
  expect_true(class(good) == "character")
})

test_that("HAPPY: whatis prints result message", {
  good <- \() {
    vcr::use_cassette("whatis-happy-print-results", {
      with_stubbed_credentials({
        air::whatis("paste0(vector1, vector2)")
      })
    })
  }

  expect_message(good(), ".*\n+")
})
