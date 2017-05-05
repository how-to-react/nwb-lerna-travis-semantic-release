import expect from 'expect';

import { describeMe } from 'src/index';

describe('Module template', () => {
  it('describes self', () => {
    expect(describeMe()).toContain('I am nwb web module');
  });
});
