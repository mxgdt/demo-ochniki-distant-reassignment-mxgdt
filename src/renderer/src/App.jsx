import { useEffect, useState } from "react"
import Card from "./components/Card"
import Button from "./components/Button"
import { Link, useNavigate } from "react-router-dom"

function App() {
  const navigate = useNavigate()
  const [familyMembers, setFamilyMembers] = useState([])
  const getFamilyMembers = async () => {
    const data = await window.api.getFamilyMembers()
    setFamilyMembers(data)
  }
  const onDelete = async (id) => {
    const data = await window.api.deleteFamilyMember(id)
    if (data) {
      await getFamilyMembers()
      alert('Успешно удален')
    }
  }
  const onUpdate = async (familyMember) => {
    navigate('/update?familyMember=' + JSON.stringify(familyMember))
  }
  useEffect(() => {
    getFamilyMembers()
  }, [])

  return (
    <div className="flex gap-2">
      <div className="grid items-start gap-4">
        {familyMembers && familyMembers.map((familyMember) => {
          return <Card key={familyMember.id} familyMember={familyMember} onUpdate={onUpdate} onDelete={onDelete} />

        }) || <span>Нет данных</span>}
      </div>
      <div className="flex items-start relative">
        <div className="sticky top-10">
          <Link to="/add">
            <Button label="Добавить " />
          </Link>

        </div>
      </div>
    </div>
  )
}

export default App
