<main role="main">
  <div class="container">
    <div class="row logo-and-breadcrumb-holder">
      <div class="col">
        $Breadcrumbs
      </div>
    </div>
    <div class="row content-outer">
      <div class="col-lg-9">
        $Layout
      </div>
      <% if not $HideSidebar %>
        <% include Sidebar %>
      <% end_if %>
    </div>
  </div>
</main>
