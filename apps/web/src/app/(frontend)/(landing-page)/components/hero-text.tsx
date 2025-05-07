import React from 'react'

export default function HeroText() {
  return (
    <div className="z-10 mt-20 text-center md:mt-0 md:text-left rounded-3xl bg-clip-text">
      {/* Desktop View */}
      <div className="flex-col hidden md:flex text-red-700">
        <h1 className="text-4xl font-bold">Hi I&apos;m Sami</h1>
      </div>
      {/* Mobile View */}
      <div className="block md:hidden"></div>
    </div>
  )
}
