import PropTypes from 'prop-types';
import Button from './Button';
import { Link, useNavigate, useSearchParams } from 'react-router-dom';
import Input from './Input';
import { useEffect, useState } from 'react';
const Form = ({ isEdit }) => {
    const [searchParams] = useSearchParams()
    const [form, setForm] = useState({
        family_member_name: '',
        birth_date: '',
        job_name: '',
        organisation_name: '',
        sallary: ''
    })

    const navigate = useNavigate()
    useEffect(() => {
        const getfamilyMember = async () => {
            const member = JSON.parse(searchParams.get('familyMember'))
            member.birth_date = new Date(member.birth_date).toISOString().split('T')[0]
            setForm(member)
        }
        if (isEdit) {
            getfamilyMember()
        }
    }, [])
    const submit = async (e) => {
        e.preventDefault()
        try {
            const service = isEdit ? await window.api.updateFamilyMember : await window.api.postFamilyMember
            await service(form)
            alert('Успешно')
            navigate('/')
            e.target.reset()
        } catch (error) {
            console.error(error)
        }
    }
    const handleInputChange = (field, value) => {
        setForm(prev => ({
            ...prev,
            [field]: value
        }));
    };

    return (
        <form onSubmit={submit} className='bg-amber-200 p-5 rounded-2xl flex flex-col gap-5 flex-1'>
            <Link to="/"><Button addClass={'mb-5 w-full'} label="Назад"></Button> </Link>

            <Input value={form.family_member_name} input={(value) => handleInputChange('family_member_name', value)} type="text" id="family_memnber_name" required label="ФИО" />
            <Input value={form.birth_date} input={(value) => handleInputChange('birth_date', value)} type="date" id="birth_date" label="Дата рождения" required />
            <Input value={form.job_name} input={(value) => handleInputChange('job_name', value)} type="text" id="job_name" label="Должность" />
            <Input value={form.organisation_name} input={(value) => handleInputChange('organisation_name', value)} type="text" id="organisation_name" label="Наименование организации" />
            <Input value={form.sallary} input={(value) => handleInputChange('sallary', value)} type="number" id="sallary" label="Зарплата" />

            <Button type="button" label={isEdit ? 'Изменить' : 'Добавить'}></Button>
        </form>
    )
}

Form.propTypes = {
    isEdit: PropTypes.bool
}

export default Form