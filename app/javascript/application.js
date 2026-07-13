// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// The browser's native same-page anchor scroll (e.g. clicking href="#boutiques")
// can land far past the target on this page's flex layout. Compute the scroll
// position manually instead of relying on the native fragment jump.
document.addEventListener("click", (event) => {
  const link = event.target.closest('a[href^="#"]')
  if (!link || link.getAttribute("href").length < 2) return

  const target = document.getElementById(link.getAttribute("href").slice(1))
  if (!target) return

  event.preventDefault()
  target.scrollIntoView({ behavior: "smooth", block: "start" })
  history.pushState(null, "", link.getAttribute("href"))
})

// Turbo visits reset scroll to the top of the page. Restore position on the
// #boutiques section after a fragment-carrying visit, or after submitting
// the store filters (browsers drop the URL fragment on GET form submits,
// so the country/city query params are used as a fallback signal instead).
document.addEventListener("turbo:load", () => {
  const params = new URLSearchParams(location.search)
  const hasFilterParams = params.has("city") || params.has("country")
  const targetId = location.hash ? location.hash.slice(1) : (hasFilterParams ? "boutiques" : null)
  if (!targetId) return

  const target = document.getElementById(targetId)
  if (!target) return

  target.scrollIntoView({ behavior: "instant", block: "start" })
})
