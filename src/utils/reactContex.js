import { createContext } from 'react';
export const memberContext = createContext({
    familyMember: [],
    updateMember: () => { },
});