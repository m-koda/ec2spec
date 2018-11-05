module EC2spec
  class Data
    SPEC_DATA = [
      {family: :general, series: :t, generation: 3, type: 't3.nano',     cpu: 2,  memory: 0.5,   network: 'Low'},
      {family: :general, series: :t, generation: 3, type: 't3.micro',    cpu: 2,  memory: 1.0,   network: 'Low to Moderate'},
      {family: :general, series: :t, generation: 3, type: 't3.small',    cpu: 2,  memory: 2.0,   network: 'Low to Moderate'},
      {family: :general, series: :t, generation: 3, type: 't3.medium',   cpu: 2,  memory: 4.0,   network: 'Low to Moderate'},
      {family: :general, series: :t, generation: 3, type: 't3.large',    cpu: 2,  memory: 8.0,   network: 'Low to Moderate'},
      {family: :general, series: :t, generation: 3, type: 't3.xlarge',   cpu: 4,  memory: 16.0,  network: 'Moderate'},
      {family: :general, series: :t, generation: 3, type: 't3.2xlarge',  cpu: 8,  memory: 32.0,  network: 'Moderate'},
      {family: :compute, series: :t, generation: 3, type: 't3.nano',     cpu: 2,  memory: 0.5,   network: 'Low'},
      {family: :compute, series: :c, generation: 5, type: 'c5.large',    cpu: 2,  memory: 4.0,   network: 'MAX 10Gbps'},
      {family: :compute, series: :c, generation: 5, type: 'c5.xlarge',   cpu: 4,  memory: 8.0,   network: 'MAX 10Gbps'},
      {family: :compute, series: :c, generation: 5, type: 'c5.2xlarge',  cpu: 8,  memory: 16.0,  network: 'MAX 10Gbps'},
      {family: :compute, series: :c, generation: 5, type: 'c5.4xlarge',  cpu: 16, memory: 32.0,  network: 'MAX 10Gbps'},
      {family: :compute, series: :c, generation: 5, type: 'c5.9xlarge',  cpu: 36, memory: 72.0,  network: '10Gbps'},
      {family: :compute, series: :c, generation: 5, type: 'c5.18xlarge', cpu: 72, memory: 144.0, network: '25Gbps'},
    ]

    def initialize
      @spec_data = SPEC_DATA
    end

    def get_all
      @spec_data
    end

    def get_family(family)
      case family
      when "general"
        SPEC_DATA.select {|row| row[:family] == :general}
      when "compute"
        SPEC_DATA.select {|row| row[:family] == :compute}
      else
       "no such family: #{family}"
      end
    end
  end
end