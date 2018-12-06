import * as React from 'react'
import { TopPageImgs } from '../../../constants/images'

const TopPageBtn = ({ isSignIn, onClick }: any) => (
  <a className="toppage-btn" onClick={onClick}>
    {isSignIn ? (
      <img className="toppage-btn-img" src={TopPageImgs['signUp']} />
    ) : (
      <img className="toppage-btn-img" src={TopPageImgs['signIn']} />
    )}
  </a>
)

export default TopPageBtn
