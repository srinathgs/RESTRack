module RESTRack
  class Hooks
    # Use this to execute a code block prior to all requests handled by your service.
    # For example, to do database connection per request you could establish db connections and transactions here.
    def pre_processor(request)
      request.instance_variable_set(:@pre_processor_executed, true)
    end
    # Use this to execute code after all requests handled by your service.
    # For example, to do database connection per request you could commit transactions and/or teardown db connections here.
    def post_processor(response)
      $post_processor_executed = true
      $response = response
    end
  end # class Hooks
end # module RESTRack