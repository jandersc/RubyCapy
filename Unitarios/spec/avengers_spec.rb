class AvengersHeadQuarter

    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(avenger)
        self.list.push(avenger)
    end 

end

#TDD (Desenvolvimento Guiado por Testes)
describe AvengersHeadQuarter do

    it 'deve adicionar um vingador' do

        hq = AvengersHeadQuarter.new 
        hq.put('Hulk')
        expect(hq.list).to include 'Hulk'

    end

    it 'deve adicionar uma lista de vingadores' do

        hq = AvengersHeadQuarter.new
        hq.put('Homem de Ferro')
        hq.put('Capitao America')
        hq.put('Viuva Negra')

        res = hq.list.size > 0

        expect(hq.list).to include 'Homem de Ferro'
        expect(hq.list.size).to be > 0
        expect(res).to be true

    end

    it 'Homem de Ferro deve ser o primeiro da lista' do

        hq = AvengersHeadQuarter.new
        hq.put('Homem de Ferro')
        hq.put('Capitao America')
        hq.put('Viuva Negra')

        expect(hq.list).to start_with('Homem de Ferro')

    end

    it 'Viuva Negra deve ser a ultima da lista' do

        hq = AvengersHeadQuarter.new
        hq.put('Homem de Ferro')
        hq.put('Capitao America')
        hq.put('Viuva Negra')

        expect(hq.list).to end_with('Viuva Negra')

    end

    it 'deve conter o sobrenome' do
        avenger = "Tony Stark"

        expect(avenger).to match(/Stark/)
        expect(avenger).not_to match(/Silva/)

    end
end