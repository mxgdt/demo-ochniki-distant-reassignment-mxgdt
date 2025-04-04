import { contextBridge, ipcRenderer } from 'electron'
import { electronAPI } from '@electron-toolkit/preload'

// Custom APIs for renderer
const api = {
  getFamilyMembers: () => ipcRenderer.invoke('getFamilyMembers'),
  postFamilyMember: (familyMember) => ipcRenderer.invoke('postFamilyMember', familyMember),
  deleteFamilyMember: (familyMemberId) => ipcRenderer.invoke('deleteFamilyMember', familyMemberId),
  updateFamilyMember: (familyMember) => ipcRenderer.invoke('updateFamilyMember', familyMember)
}

// Use `contextBridge` APIs to expose Electron APIs to
// renderer only if context isolation is enabled, otherwise
// just add to the DOM global.
if (process.contextIsolated) {
  try {
    contextBridge.exposeInMainWorld('electron', electronAPI)
    contextBridge.exposeInMainWorld('api', api)
  } catch (error) {
    console.error(error)
  }
} else {
  window.electron = electronAPI
  window.api = api
}
