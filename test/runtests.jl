using Test
using ArrayUtil
using MetaModelica

@testset "ArrayUtil smoke" begin
    @test isdefined(ArrayUtil, :map)
    @test isdefined(ArrayUtil, :fold)
    @test isdefined(ArrayUtil, :mapNoCopy)

    # mapNoCopy mutates the source array and returns it.
    src = [1, 2, 3, 4]
    out = ArrayUtil.mapNoCopy(src, x -> x + 1)
    @test out === src
    @test src == [2, 3, 4, 5]

    # map allocates a fresh result.
    src2 = [10, 20, 30]
    out2 = ArrayUtil.map(src2, x -> x * 2)
    @test out2 == [20, 40, 60]
    @test src2 == [10, 20, 30]

    # fold accumulates.
    @test ArrayUtil.fold([1, 2, 3, 4], (x, acc) -> acc + x, 0) == 10

    # findFirstOnTrue returns Option{T}: SOME(elem) on hit, NONE() on miss.
    @test ArrayUtil.findFirstOnTrue([1, 2, 3, 4], iseven) == SOME(2)
    @test ArrayUtil.findFirstOnTrue([1, 3, 5], iseven) == NONE()

    # mapList converts a MetaModelica list into a Vector via map.
    lst = list(1, 2, 3)
    @test ArrayUtil.mapList(lst, x -> x + 1) == [2, 3, 4]
end
