import React from 'react';
import {
  Route,
  Link,
  Switch,
  HashRouter
} from 'react-router-dom';

import HeaderContainer from './header/header_container';
import GreetingContainer from './greeting/greeting_container';
import SessionFormContainer from './session_form/session_form_container';
import FrontPage from './front_page/front_page';
import EventFormContainer from './event_form/event_form_container';
import EventShowContainer from './event_show/event_show_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const App = () => (
  <div className="page">
    <div className="navbar navbar-default navbar-fixed-top">
      <HeaderContainer />
    </div>
    <div className="page-content">
      <Switch>
        <AuthRoute path="/login" component={SessionFormContainer} />
        <AuthRoute path="/signup" component={SessionFormContainer} />
        <ProtectedRoute path="/event" component={EventFormContainer} />
        <ProtectedRoute path="/group" component={EventFormContainer} />
        <ProtectedRoute  path="/events/:eventId" component={EventShowContainer} />
      </Switch>
    </div>
  </div>
);

export default App;
