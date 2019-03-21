import React from 'react';
import {
  Route,
  Link,
  Switch,
  HashRouter
} from 'react-router-dom';

import HeaderLinks from './header_links/header_links';
import GreetingContainer from './greeting/greeting_container';
import SessionFormContainer from './session_form/session_form_container';
import EventFormContainer from './event_form/event_form_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const App = () => (
  <div>
    <header className="header">
      <HeaderLinks />
      <GreetingContainer />
    </header>
    <Switch>
      <AuthRoute path="/login" component={SessionFormContainer} />
      <AuthRoute path="/signup" component={SessionFormContainer} />
      <ProtectedRoute path="/events/new" component={EventFormContainer} />
    </Switch>
  </div>
);

export default App;
