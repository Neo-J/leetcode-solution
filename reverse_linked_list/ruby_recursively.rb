# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
    last = nil
    while head != nil
        tmp = head.next
        if tmp == nil
            reversedHead = head
        end
        head.next = last
        last = head
        head = tmp
    end
    return reversedHead
end