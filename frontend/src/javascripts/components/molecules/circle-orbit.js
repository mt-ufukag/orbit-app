import React, { Component } from 'react'
import { connect } from 'react-redux'
import { selectAssignment, disselectAssignment } from '../../actions/assignments'
import { PlanetImgs } from '../../constants'
import Planet from './planet'

class CircleOrbit extends Component {
  constructor(props) {
    super(props)
  }

  render() {
    console.log(this.props)
    return(
      <div className={`circle-${this.props.orbit} common-circle`} >
        <Planet orbit={this.props.orbit} />
      </div>
    )
  }
}

export default connect(({selectedAssignments}) => ({selectedAssignments}),
  {selectAssignment, disselectAssignment}
)(CircleOrbit)
