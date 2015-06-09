# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
    return nil if head == nil
    cursor = head
    while cursor != nil
        if cursor.val != val
            pre = cursor
            cursor = cursor.next
        else
            if pre == nil
                head = head.next
                cursor = head
            else
                pre.next = cursor.next
                cursor.next = nil
                cursor = pre.next
            end
        end
    end
    head
end