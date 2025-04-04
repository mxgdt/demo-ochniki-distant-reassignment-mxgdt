import PropTypes from 'prop-types';
import Button from './Button';

const Card = ({ familyMember = {}, onDelete, onUpdate }) => {
    const isProfit = familyMember.sallary - familyMember.total_cost_based_on_price > 0;
    return (
        <div className="bg-[#EBE84B] grid grid-cols-2 w-[400px] gap-2 p-5 rounded">
            <div className="flex flex-col gap-1">
                <span>{familyMember.family_member_name}</span>
                <span>{new Date().getFullYear() - new Date(familyMember.birth_date).getFullYear()} лет</span>
                <span>{familyMember.job_name || 'Безработный'}</span>
                <span>{familyMember.organisation_name || '-'}</span>
                <span>{familyMember.sallary}</span>
            </div>
            <div className="grid items-start justify-center font-bold">
                {isProfit ? 'Профицит бюджет' : 'Дефицит бюджета'}
            </div>
            <div className="col-span-2 gap-2 flex">
                <Button addClass="flex-1" label="Редактировать" onClick={() => onUpdate(familyMember)} />
                <Button addClass="flex-1" label="Удалить" sev="danger" onClick={() => onDelete(familyMember.id)} />
            </div>
        </div>

    )
}

Card.propTypes = {
    familyMember: PropTypes.object,
    onDelete: PropTypes.func,
    onUpdate: PropTypes.func
}

export default Card;