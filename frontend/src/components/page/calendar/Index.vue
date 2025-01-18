<template>
  <!-- <html>
  <head>
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin="" />
    <link
      rel="stylesheet"
      as="style"
      onload="this.rel='stylesheet'"
      href="https://fonts.googleapis.com/css2?display=swap&amp;family=Inter%3Awght%40400%3B500%3B700%3B900&amp;family=Noto+Sans%3Awght%40400%3B500%3B700%3B900"
    />

    <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
  </head>
  <body> -->
    <div class="relative flex size-full min-h-screen flex-col bg-slate-50 group/design-root overflow-x-hidden" style='font-family: Inter, "Noto Sans", sans-serif;'>
      <div class="layout-container flex h-full grow flex-col">
        <header class="flex items-center justify-between whitespace-nowrap border-b border-solid border-b-[#e7edf3] px-10 py-3">
          <div class="flex items-center gap-8">
            <div class="flex items-center gap-4 text-[#0e141b]">
              <div class="size-4">
                <svg viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <g clip-path="url(#clip0_6_319)">
                    <path
                      d="M8.57829 8.57829C5.52816 11.6284 3.451 15.5145 2.60947 19.7452C1.76794 23.9758 2.19984 28.361 3.85056 32.3462C5.50128 36.3314 8.29667 39.7376 11.8832 42.134C15.4698 44.5305 19.6865 45.8096 24 45.8096C28.3135 45.8096 32.5302 44.5305 36.1168 42.134C39.7033 39.7375 42.4987 36.3314 44.1494 32.3462C45.8002 28.361 46.2321 23.9758 45.3905 19.7452C44.549 15.5145 42.4718 11.6284 39.4217 8.57829L24 24L8.57829 8.57829Z"
                      fill="currentColor"
                    ></path>
                  </g>
                  <defs>
                    <clipPath id="clip0_6_319"><rect width="48" height="48" fill="white"></rect></clipPath>
                  </defs>
                </svg>
              </div>
              <h2 class="text-[#0e141b] text-lg font-bold leading-tight tracking-[-0.015em]">Acme Co</h2>
            </div>
            <div class="flex items-center gap-9">
              <a class="text-[#0e141b] text-sm font-medium leading-normal" href="#">Home</a>
              <a class="text-[#0e141b] text-sm font-medium leading-normal" href="#">Directory</a>
              <a class="text-[#0e141b] text-sm font-medium leading-normal" href="#">Insights</a>
              <a class="text-[#0e141b] text-sm font-medium leading-normal" href="#">Jobs</a>
            </div>
          </div>
          <div class="flex flex-1 justify-end gap-8">
            <label class="flex flex-col min-w-40 !h-10 max-w-64">
              <div class="flex w-full flex-1 items-stretch rounded-xl h-full">
                <div
                  class="text-[#4e7397] flex border-none bg-[#e7edf3] items-center justify-center pl-4 rounded-l-xl border-r-0"
                  data-icon="MagnifyingGlass"
                  data-size="24px"
                  data-weight="regular"
                >
                  <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" fill="currentColor" viewBox="0 0 256 256">
                    <path
                      d="M229.66,218.34l-50.07-50.06a88.11,88.11,0,1,0-11.31,11.31l50.06,50.07a8,8,0,0,0,11.32-11.32ZM40,112a72,72,0,1,1,72,72A72.08,72.08,0,0,1,40,112Z"
                    ></path>
                  </svg>
                </div>
                <input
                  placeholder="Search"
                  class="form-input flex w-full min-w-0 flex-1 resize-none overflow-hidden rounded-xl text-[#0e141b] focus:outline-0 focus:ring-0 border-none bg-[#e7edf3] focus:border-none h-full placeholder:text-[#4e7397] px-4 rounded-l-none border-l-0 pl-2 text-base font-normal leading-normal"
                  value=""
                />
              </div>
            </label>
            <div class="flex gap-2">
              <button
                class="flex max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-xl h-10 bg-[#e7edf3] text-[#0e141b] gap-2 text-sm font-bold leading-normal tracking-[0.015em] min-w-0 px-2.5"
              >
                <div class="text-[#0e141b]" data-icon="Bell" data-size="20px" data-weight="regular">
                  <svg xmlns="http://www.w3.org/2000/svg" width="20px" height="20px" fill="currentColor" viewBox="0 0 256 256">
                    <path
                      d="M221.8,175.94C216.25,166.38,208,139.33,208,104a80,80,0,1,0-160,0c0,35.34-8.26,62.38-13.81,71.94A16,16,0,0,0,48,200H88.81a40,40,0,0,0,78.38,0H208a16,16,0,0,0,13.8-24.06ZM128,216a24,24,0,0,1-22.62-16h45.24A24,24,0,0,1,128,216ZM48,184c7.7-13.24,16-43.92,16-80a64,64,0,1,1,128,0c0,36.05,8.28,66.73,16,80Z"
                    ></path>
                  </svg>
                </div>
              </button>
              <button
                class="flex max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-xl h-10 bg-[#e7edf3] text-[#0e141b] gap-2 text-sm font-bold leading-normal tracking-[0.015em] min-w-0 px-2.5"
              >
                <div class="text-[#0e141b]" data-icon="Table" data-size="20px" data-weight="regular">
                  <svg xmlns="http://www.w3.org/2000/svg" width="20px" height="20px" fill="currentColor" viewBox="0 0 256 256">
                    <path
                      d="M224,48H32a8,8,0,0,0-8,8V192a16,16,0,0,0,16,16H216a16,16,0,0,0,16-16V56A8,8,0,0,0,224,48ZM40,112H80v32H40Zm56,0H216v32H96ZM216,64V96H40V64ZM40,160H80v32H40Zm176,32H96V160H216v32Z"
                    ></path>
                  </svg>
                </div>
              </button>
            </div>
            <div
              class="bg-center bg-no-repeat aspect-square bg-cover rounded-full size-10"
              style='background-image: url("https://cdn.usegalileo.ai/sdxl10/a245309c-1e3c-4d2e-ab37-e62e455b4346.png");'
            ></div>
          </div>
        </header>
        <div class="px-40 flex flex-1 justify-center py-5">
          <div class="layout-content-container flex flex-col max-w-[960px] flex-1">
            <div class="flex flex-wrap justify-between gap-3 p-4"><p class="text-[#0e141b] text-4xl font-black leading-tight tracking-[-0.033em] min-w-72">People</p></div>
            <div class="px-4 py-3">
              <label class="flex flex-col min-w-40 h-12 w-full">
                <div class="flex w-full flex-1 items-stretch rounded-xl h-full">
                  <div
                    class="text-[#4e7397] flex border-none bg-[#e7edf3] items-center justify-center pl-4 rounded-l-xl border-r-0"
                    data-icon="MagnifyingGlass"
                    data-size="24px"
                    data-weight="regular"
                  >
                    <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" fill="currentColor" viewBox="0 0 256 256">
                      <path
                        d="M229.66,218.34l-50.07-50.06a88.11,88.11,0,1,0-11.31,11.31l50.06,50.07a8,8,0,0,0,11.32-11.32ZM40,112a72,72,0,1,1,72,72A72.08,72.08,0,0,1,40,112Z"
                      ></path>
                    </svg>
                  </div>
                  <input
                    placeholder="Search..."
                    class="form-input flex w-full min-w-0 flex-1 resize-none overflow-hidden rounded-xl text-[#0e141b] focus:outline-0 focus:ring-0 border-none bg-[#e7edf3] focus:border-none h-full placeholder:text-[#4e7397] px-4 rounded-l-none border-l-0 pl-2 text-base font-normal leading-normal"
                    value=""
                  />
                </div>
              </label>
            </div>
            <div class="px-4 py-3 @container">
              <div class="flex overflow-hidden rounded-xl border border-[#d0dbe7] bg-slate-50">
                <table class="flex-1">
                  <thead>
                    <tr class="bg-slate-50">
                      <th class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-120 px-4 py-3 text-left text-[#0e141b] w-[400px] text-sm font-medium leading-normal">Name</th>
                      <th class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-240 px-4 py-3 text-left text-[#0e141b] w-[400px] text-sm font-medium leading-normal">Email</th>
                      <th class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-360 px-4 py-3 text-left text-[#0e141b] w-60 text-sm font-medium leading-normal">Role</th>
                      <th class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-480 px-4 py-3 text-left text-[#0e141b] w-[400px] text-sm font-medium leading-normal">Team</th>
                      <th class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-600 px-4 py-3 text-left text-[#0e141b] w-[400px] text-sm font-medium leading-normal">
                        Hire Date
                      </th>
                      <th class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-720 px-4 py-3 text-left text-[#0e141b] w-60 text-sm font-medium leading-normal">Status</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr class="border-t border-t-[#d0dbe7]">
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-120 h-[72px] px-4 py-2 w-[400px] text-[#0e141b] text-sm font-normal leading-normal">Alice</td>
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-240 h-[72px] px-4 py-2 w-[400px] text-[#4e7397] text-sm font-normal leading-normal">
                        alice@acme.co
                      </td>
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-360 h-[72px] px-4 py-2 w-60 text-sm font-normal leading-normal">
                        <button
                          class="flex min-w-[84px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-xl h-8 px-4 bg-[#e7edf3] text-[#0e141b] text-sm font-medium leading-normal w-full"
                        >
                          <span class="truncate">Admin</span>
                        </button>
                      </td>
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-480 h-[72px] px-4 py-2 w-[400px] text-[#4e7397] text-sm font-normal leading-normal">Product</td>
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-600 h-[72px] px-4 py-2 w-[400px] text-[#4e7397] text-sm font-normal leading-normal">1/1/2022</td>
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-720 h-[72px] px-4 py-2 w-60 text-sm font-normal leading-normal">
                        <button
                          class="flex min-w-[84px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-xl h-8 px-4 bg-[#e7edf3] text-[#0e141b] text-sm font-medium leading-normal w-full"
                        >
                          <span class="truncate">Active</span>
                        </button>
                      </td>
                    </tr>
                    <tr class="border-t border-t-[#d0dbe7]">
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-120 h-[72px] px-4 py-2 w-[400px] text-[#0e141b] text-sm font-normal leading-normal">Bob</td>
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-240 h-[72px] px-4 py-2 w-[400px] text-[#4e7397] text-sm font-normal leading-normal">
                        bob@acme.co
                      </td>
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-360 h-[72px] px-4 py-2 w-60 text-sm font-normal leading-normal">
                        <button
                          class="flex min-w-[84px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-xl h-8 px-4 bg-[#e7edf3] text-[#0e141b] text-sm font-medium leading-normal w-full"
                        >
                          <span class="truncate">Member</span>
                        </button>
                      </td>
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-480 h-[72px] px-4 py-2 w-[400px] text-[#4e7397] text-sm font-normal leading-normal">Design</td>
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-600 h-[72px] px-4 py-2 w-[400px] text-[#4e7397] text-sm font-normal leading-normal">1/1/2022</td>
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-720 h-[72px] px-4 py-2 w-60 text-sm font-normal leading-normal">
                        <button
                          class="flex min-w-[84px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-xl h-8 px-4 bg-[#e7edf3] text-[#0e141b] text-sm font-medium leading-normal w-full"
                        >
                          <span class="truncate">Active</span>
                        </button>
                      </td>
                    </tr>
                    <tr class="border-t border-t-[#d0dbe7]">
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-120 h-[72px] px-4 py-2 w-[400px] text-[#0e141b] text-sm font-normal leading-normal">Charlie</td>
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-240 h-[72px] px-4 py-2 w-[400px] text-[#4e7397] text-sm font-normal leading-normal">
                        charlie@acme.co
                      </td>
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-360 h-[72px] px-4 py-2 w-60 text-sm font-normal leading-normal">
                        <button
                          class="flex min-w-[84px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-xl h-8 px-4 bg-[#e7edf3] text-[#0e141b] text-sm font-medium leading-normal w-full"
                        >
                          <span class="truncate">Member</span>
                        </button>
                      </td>
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-480 h-[72px] px-4 py-2 w-[400px] text-[#4e7397] text-sm font-normal leading-normal">
                        Engineering
                      </td>
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-600 h-[72px] px-4 py-2 w-[400px] text-[#4e7397] text-sm font-normal leading-normal">1/1/2022</td>
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-720 h-[72px] px-4 py-2 w-60 text-sm font-normal leading-normal">
                        <button
                          class="flex min-w-[84px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-xl h-8 px-4 bg-[#e7edf3] text-[#0e141b] text-sm font-medium leading-normal w-full"
                        >
                          <span class="truncate">Active</span>
                        </button>
                      </td>
                    </tr>
                    <tr class="border-t border-t-[#d0dbe7]">
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-120 h-[72px] px-4 py-2 w-[400px] text-[#0e141b] text-sm font-normal leading-normal">David</td>
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-240 h-[72px] px-4 py-2 w-[400px] text-[#4e7397] text-sm font-normal leading-normal">
                        david@acme.co
                      </td>
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-360 h-[72px] px-4 py-2 w-60 text-sm font-normal leading-normal">
                        <button
                          class="flex min-w-[84px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-xl h-8 px-4 bg-[#e7edf3] text-[#0e141b] text-sm font-medium leading-normal w-full"
                        >
                          <span class="truncate">Member</span>
                        </button>
                      </td>
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-480 h-[72px] px-4 py-2 w-[400px] text-[#4e7397] text-sm font-normal leading-normal">
                        Engineering
                      </td>
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-600 h-[72px] px-4 py-2 w-[400px] text-[#4e7397] text-sm font-normal leading-normal">1/1/2022</td>
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-720 h-[72px] px-4 py-2 w-60 text-sm font-normal leading-normal">
                        <button
                          class="flex min-w-[84px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-xl h-8 px-4 bg-[#e7edf3] text-[#0e141b] text-sm font-medium leading-normal w-full"
                        >
                          <span class="truncate">Active</span>
                        </button>
                      </td>
                    </tr>
                    <tr class="border-t border-t-[#d0dbe7]">
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-120 h-[72px] px-4 py-2 w-[400px] text-[#0e141b] text-sm font-normal leading-normal">Eve</td>
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-240 h-[72px] px-4 py-2 w-[400px] text-[#4e7397] text-sm font-normal leading-normal">
                        eve@acme.co
                      </td>
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-360 h-[72px] px-4 py-2 w-60 text-sm font-normal leading-normal">
                        <button
                          class="flex min-w-[84px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-xl h-8 px-4 bg-[#e7edf3] text-[#0e141b] text-sm font-medium leading-normal w-full"
                        >
                          <span class="truncate">Member</span>
                        </button>
                      </td>
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-480 h-[72px] px-4 py-2 w-[400px] text-[#4e7397] text-sm font-normal leading-normal">
                        Engineering
                      </td>
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-600 h-[72px] px-4 py-2 w-[400px] text-[#4e7397] text-sm font-normal leading-normal">1/1/2022</td>
                      <td class="table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-720 h-[72px] px-4 py-2 w-60 text-sm font-normal leading-normal">
                        <button
                          class="flex min-w-[84px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-xl h-8 px-4 bg-[#e7edf3] text-[#0e141b] text-sm font-medium leading-normal w-full"
                        >
                          <span class="truncate">Active</span>
                        </button>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
              
            </div>
          </div>
        </div>
        <footer class="flex justify-center">
          <div class="flex max-w-[960px] flex-1 flex-col">
            <footer class="flex flex-col gap-6 px-5 py-10 text-center @container">
              <div class="flex flex-wrap items-center justify-center gap-6 @[480px]:flex-row @[480px]:justify-around">
                <a class="text-[#4e7397] text-base font-normal leading-normal min-w-40" href="#">About</a>
                <a class="text-[#4e7397] text-base font-normal leading-normal min-w-40" href="#">Help Center</a>
                <a class="text-[#4e7397] text-base font-normal leading-normal min-w-40" href="#">Terms of Service</a>
                <a class="text-[#4e7397] text-base font-normal leading-normal min-w-40" href="#">Privacy Policy</a>
              </div>
              <div class="flex flex-wrap justify-center gap-4">
                <a href="#">
                  <div class="text-[#4e7397]" data-icon="TwitterLogo" data-size="24px" data-weight="regular">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" fill="currentColor" viewBox="0 0 256 256">
                      <path
                        d="M247.39,68.94A8,8,0,0,0,240,64H209.57A48.66,48.66,0,0,0,168.1,40a46.91,46.91,0,0,0-33.75,13.7A47.9,47.9,0,0,0,120,88v6.09C79.74,83.47,46.81,50.72,46.46,50.37a8,8,0,0,0-13.65,4.92c-4.31,47.79,9.57,79.77,22,98.18a110.93,110.93,0,0,0,21.88,24.2c-15.23,17.53-39.21,26.74-39.47,26.84a8,8,0,0,0-3.85,11.93c.75,1.12,3.75,5.05,11.08,8.72C53.51,229.7,65.48,232,80,232c70.67,0,129.72-54.42,135.75-124.44l29.91-29.9A8,8,0,0,0,247.39,68.94Zm-45,29.41a8,8,0,0,0-2.32,5.14C196,166.58,143.28,216,80,216c-10.56,0-18-1.4-23.22-3.08,11.51-6.25,27.56-17,37.88-32.48A8,8,0,0,0,92,169.08c-.47-.27-43.91-26.34-44-96,16,13,45.25,33.17,78.67,38.79A8,8,0,0,0,136,104V88a32,32,0,0,1,9.6-22.92A30.94,30.94,0,0,1,167.9,56c12.66.16,24.49,7.88,29.44,19.21A8,8,0,0,0,204.67,80h16Z"
                      ></path>
                    </svg>
                  </div>
                </a>
                <a href="#">
                  <div class="text-[#4e7397]" data-icon="LinkedinLogo" data-size="24px" data-weight="regular">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" fill="currentColor" viewBox="0 0 256 256">
                      <path
                        d="M216,24H40A16,16,0,0,0,24,40V216a16,16,0,0,0,16,16H216a16,16,0,0,0,16-16V40A16,16,0,0,0,216,24Zm0,192H40V40H216V216ZM96,112v64a8,8,0,0,1-16,0V112a8,8,0,0,1,16,0Zm88,28v36a8,8,0,0,1-16,0V140a20,20,0,0,0-40,0v36a8,8,0,0,1-16,0V112a8,8,0,0,1,15.79-1.78A36,36,0,0,1,184,140ZM100,84A12,12,0,1,1,88,72,12,12,0,0,1,100,84Z"
                      ></path>
                    </svg>
                  </div>
                </a>
                <a href="#">
                  <div class="text-[#4e7397]" data-icon="FacebookLogo" data-size="24px" data-weight="regular">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" fill="currentColor" viewBox="0 0 256 256">
                      <path
                        d="M128,24A104,104,0,1,0,232,128,104.11,104.11,0,0,0,128,24Zm8,191.63V152h24a8,8,0,0,0,0-16H136V112a16,16,0,0,1,16-16h16a8,8,0,0,0,0-16H152a32,32,0,0,0-32,32v24H96a8,8,0,0,0,0,16h24v63.63a88,88,0,1,1,16,0Z"
                      ></path>
                    </svg>
                  </div>
                </a>
              </div>
              <p class="text-[#4e7397] text-base font-normal leading-normal">@2023 Acme Co</p>
            </footer>
          </div>
        </footer>
      </div>
    </div>
  <!-- </body>
</html> -->

</template>

<script setup lang="ts">
import { ref } from 'vue'
import { useHead } from '@unhead/vue'

useHead({
  title: 'KURO DIGITAL LOG',
  script: [
    {
      src: "https://cdn.tailwindcss.com?plugins=forms,container-queries",
    },
  ],
  link: [
    {
      rel: "preconnect",
      href: "https://fonts.gstatic.com/",
      crossorigin: ""
    },
    {
      rel: "stylesheet",
      as: "style",
      onload: "this.rel='stylesheet'",
      href: "https://fonts.googleapis.com/css2?display=swap&amp;family=Inter%3Awght%40400%3B500%3B700%3B900&amp;family=Noto+Sans%3Awght%40400%3B500%3B700%3B900",
    },
  ],
})
</script>

<style scoped>
  @container(max-width:120px){.table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-120{display: none;}}
  @container(max-width:240px){.table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-240{display: none;}}
  @container(max-width:360px){.table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-360{display: none;}}
  @container(max-width:480px){.table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-480{display: none;}}
  @container(max-width:600px){.table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-600{display: none;}}
  @container(max-width:720px){.table-41c238f5-a9ea-4528-9bd0-43dff44c50be-column-720{display: none;}}
</style>