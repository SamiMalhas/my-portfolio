'use client'

import React from 'react'
import Link from 'next/link'
import { motion } from 'motion/react'
// import { Button } from '@repo/ui/components/base/button'

export default function HeroText() {
  const handleClick = (e: React.MouseEvent | React.KeyboardEvent) => {
    console.log(e)
  }

  return (
    <motion.div
      className="z-10 absolute left-0 top-1/2 -translate-y-1/2 w-full max-w-2xl px-6"
      initial={{ opacity: 0, x: -300 }}
      animate={{ opacity: 1, x: 0 }}
      transition={{ duration: 0.8, ease: 'easeOut' }}
    >
      <div className="relative">
        {/* Background Elements */}
        <div className="absolute -bottom-10 -left-8 w-32 h-32 bg-yellow-300 border-4 border-black rotate-12 hidden md:block"></div>
        <div className="absolute top-10 -right-10 w-20 h-20 bg-yellow-300 border-4 border-black -rotate-6 hidden md:block"></div>

        {/* Scroll Down Indicator */}
        <motion.div
          className="absolute bottom-10 right-0 transform -translate-x-1/2 z-20"
          initial={{ y: 0 }}
          animate={{ y: [0, 10, 0] }}
          transition={{
            repeat: Infinity,
            duration: 1.5,
            ease: 'easeInOut',
          }}
        >
          <div className="flex flex-col items-center">
            <div className="bg-white border-4 border-black p-4 shadow-[4px_4px_0px_0px_rgba(0,0,0,1)] rotate-3">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                strokeWidth="3"
                strokeLinecap="square"
                strokeLinejoin="miter"
                className="transform rotate-90"
              >
                <polyline points="9 18 15 12 9 6"></polyline>
              </svg>
            </div>
            <p className="font-bold mt-2 bg-yellow-300 px-2 border-2 border-black -rotate-2">
              SCROLL
            </p>
          </div>
        </motion.div>

        {/* Main Content Container */}
        <div className="bg-white border-4 border-black p-8 md:p-10 shadow-[12px_12px_0px_0px_rgba(0,0,0,0.8)] relative z-10">
          {/* Name with Strikethrough Effect */}
          <h1 className="text-6xl md:text-8xl font-extrabold tracking-tight">
            <span className="bg-cyan-400 px-2 -mx-2 inline-block transform -rotate-1">SAMI</span>
            <span className="relative ml-3 inline-block">
              <span className="absolute left-0 right-0 h-4 bg-red-500 top-2/3 -translate-y-1/2 -rotate-1"></span>
              <span className="relative z-10">Malhas</span>
            </span>
          </h1>

          {/* Title with Custom Border */}
          <div className="mt-4 mb-8 border-l-8 border-black pl-4 transform">
            <h2 className="text-3xl md:text-4xl font-bold uppercase">Full-Stack Developer</h2>
            <p className="text-lg md:text-xl mt-1 font-medium">Creating bold digital experiences</p>
          </div>

          {/* CTA Buttons */}
          <div className="flex flex-col sm:flex-row gap-6 justify-center md:justify-start">
            <Link
              href="/portfolio"
              className="bg-black hover:bg-gray-800 text-white px-8 py-4 text-xl font-black uppercase border-4 border-black shadow-[8px_8px_0px_0px_rgba(247,140,0,1)] transition-all hover:-translate-y-1 hover:shadow-[8px_12px_0px_0px_rgba(247,140,0,1)] focus:outline-none"
              tabIndex={0}
              aria-label="View my portfolio"
              onClick={handleClick}
              onKeyDown={(e) => e.key === 'Enter' && handleClick(e)}
            >
              My Work →
            </Link>
            <Link
              href="/contact"
              className="bg-white hover:bg-gray-100 border-4 border-black px-8 py-4 text-xl font-black uppercase shadow-[8px_8px_0px_0px_rgba(34,211,238,1)] transition-all hover:-translate-y-1 hover:shadow-[8px_12px_0px_0px_rgba(34,211,238,1)] focus:outline-none"
              tabIndex={0}
              aria-label="Contact me"
              onClick={handleClick}
              onKeyDown={(e) => e.key === 'Enter' && handleClick(e)}
            >
              Contact
            </Link>
          </div>
        </div>
      </div>
    </motion.div>
  )
}
