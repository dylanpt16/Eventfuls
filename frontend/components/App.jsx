import React from 'react';
import {
  Route,
  Link,
  Switch,
  HashRouter
} from 'react-router-dom';

import GreetingContainer from './greeting/greeting_container';
import SessionFormContainer from './session_form/session_form_container';
import EventFormContainer from './event_form/event_form_container';

import { AuthRoute, ProtectedRoute } from '../util/route_util';

const App = () => (
  <div>
    <header className="header">
      <Link to="/" className="header-link">
        <h1 className="logo">Eventfuls</h1>
      </Link>
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
