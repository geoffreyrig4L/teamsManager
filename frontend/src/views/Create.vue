<template>
  <div class="flex justify-center items-center h-full">
    <div
      class="bg-base-300 shadow p-4 w-[50rem] rounded-box flex flex-col gap-8"
    >
      <h1 class="text-2xl font-bold">Create Team</h1>
      <label className="form-control w-full max-w-md">
        <div className="label">
          <span className="label-text text-lg">Team name :</span>
        </div>
        <input
          type="text"
          className="input input-bordered input-primary w-full"
        />
      </label>
      <label className="form-control w-full max-w-md">
        <div className="label">
          <span className="label-text text-lg">Team description :</span>
        </div>
        <textarea
          className="textarea textarea-primary textarea-lg w-full max-w-md"
        ></textarea>
      </label>
      <label className="form-control w-full max-w-md">
        <div className="label">
          <span className="label-text text-lg">Team logo :</span>
        </div>
        <input
          type="file"
          className="file-input file-input-bordered file-input-primary w-full  max-w-md"
        />
      </label>
      <div class="flex justify-end">
        <button className="btn btn-neutral">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 24 24"
            stroke-width="1.5"
            stroke="currentColor"
            class="w-6 h-6"
          >
            <path
              stroke-linecap="round"
              stroke-linejoin="round"
              d="M12 4.5v15m7.5-7.5h-15"
            />
          </svg>
          Create
        </button>
      </div>
    </div>
  </div>
</template>
