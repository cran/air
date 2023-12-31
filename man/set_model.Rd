% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gateway_keyring.R
\name{set_model}
\alias{set_model}
\title{Securely stores your your OpenAI API key to your OS keyring.}
\usage{
set_model(model = "gpt-4")
}
\arguments{
\item{model}{String of your preferred model; defaults to 'gpt-4'.}
}
\value{
No return value; only side-effect and message printed to console
}
\description{
Securely stores your your OpenAI API key to your OS keyring.
}
\examples{
# CAREFUL: Changes your OpenAI API model in your OS keyring
\dontrun{
set_model("gpt-4-1106-preview")
set_model() # use default
}

}
