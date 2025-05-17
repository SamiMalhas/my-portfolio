'use client'

import React from 'react'
import Link from 'next/link'
import { motion } from 'motion/react'

import { Button } from '@repo/ui/components/base/button'

export default function HeroText() {
  const handleClick = (e: React.MouseEvent | React.KeyboardEvent) => {
    console.log(e)
  }

  return (
    <motion.div
      className="z-10 absolute left-0 top-[100px] w-full max-w-full sm:max-w-lg md:max-w-xl xl:top-1/2 xl:-translate-y-1/2 lg:max-w-2xl px-4 sm:px-6"
      initial={{ opacity: 0, x: -300 }}
      animate={{ opacity: 1, x: 0 }}
      transition={{ duration: 0.8, ease: 'easeOut' }}
    >
      <div className="relative">
        {/* Background Elements */}
        <div className="absolute hidden -bottom-10 -left-8 w-20 h-20 sm:w-24 sm:h-24 md:w-32 md:h-32 bg-yellow-300 border-4 border-black rotate-12 sm:block"></div>
        <div className="absolute hidden top-10 -right-10 w-16 h-16 sm:w-18 sm:h-18 md:w-20 md:h-20 bg-yellow-300 border-4 border-black -rotate-6 sm:block"></div>

        {/* Scroll Down Indicator */}
        <motion.div
          className="absolute bottom-10 right-0 transform -translate-x-1/2 z-20 hidden md:block"
          initial={{ y: 0 }}
          animate={{ y: [0, 10, 0] }}
          transition={{
            repeat: Infinity,
            duration: 1.5,
            ease: 'easeInOut',
          }}
        >
          <div className="flex flex-col items-center">
            <div className="bg-white border-4 border-black p-3 md:p-4 shadow-[4px_4px_0px_0px_rgba(0,0,0,1)] rotate-3">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="20"
                height="20"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                strokeWidth="3"
                strokeLinecap="square"
                strokeLinejoin="miter"
                className="transform rotate-90 md:w-6 md:h-6"
              >
                <polyline points="9 18 15 12 9 6"></polyline>
              </svg>
            </div>
            <p className="text-sm md:text-base font-bold mt-2 bg-yellow-300 px-2 border-2 border-black -rotate-2">
              SCROLL
            </p>
          </div>
        </motion.div>

        {/* Main Content Container */}
        <div className="bg-white border-4 border-black p-6 sm:p-8 md:p-10 shadow-[8px_8px_0px_0px_rgba(0,0,0,0.8)] sm:shadow-[12px_12px_0px_0px_rgba(0,0,0,0.8)] relative z-10">
          {/* Name with Strikethrough Effect */}
          <h1 className="text-4xl sm:text-5xl md:text-6xl lg:text-8xl font-extrabold tracking-tight">
            <span className="bg-cyan-400 px-2 -mx-2 inline-block transform -rotate-1">SAMI</span>
            <span className="relative ml-1 sm:ml-2 md:ml-3 inline-block">
              <span className="absolute left-0 right-0 h-2 sm:h-3 md:h-4 bg-red-500 top-2/3 -translate-y-1/2 -rotate-1"></span>
              <span className="relative z-10">Malhas</span>
            </span>
          </h1>

          {/* Title with Custom Border */}
          <div className="mt-3 sm:mt-4 mb-6 sm:mb-8 border-l-4 sm:border-l-6 md:border-l-8 border-black pl-3 sm:pl-4 transform">
            <h2 className="text-xl sm:text-2xl md:text-3xl lg:text-4xl font-bold uppercase">
              Full-Stack Developer
            </h2>
            <p className="text-base sm:text-lg md:text-xl mt-1 font-medium">
              Who is seeking excellence
            </p>
          </div>

          {/* CTA Buttons */}
          <div className="flex flex-col sm:flex-row gap-4 sm:gap-6 justify-center md:justify-start">
            <Button
              asChild
              size="xl"
              variant="squared"
              className="shadow-[4px_4px_0px_0px] sm:shadow-[6px_6px_0px_0px] md:shadow-[8px_8px_0px_0px] shadow-amber-500 text-sm sm:text-base"
            >
              <Link
                href="/portfolio"
                tabIndex={0}
                aria-label="View my portfolio"
                onClick={handleClick}
                onKeyDown={(e) => e.key === 'Enter' && handleClick(e)}
              >
                My Work →
              </Link>
            </Button>
            <Button
              asChild
              size="xl"
              variant="squared"
              className="bg-white text-black border-2 sm:border-3 md:border-4 shadow-[4px_4px_0px_0px] sm:shadow-[6px_6px_0px_0px] md:shadow-[8px_8px_0px_0px] shadow-sky-500 text-sm sm:text-base"
            >
              <Link
                href="/contact"
                tabIndex={0}
                aria-label="Contact me"
                onClick={handleClick}
                onKeyDown={(e) => e.key === 'Enter' && handleClick(e)}
              >
                Contact
              </Link>
            </Button>
          </div>
        </div>
      </div>
    </motion.div>
  )
}
