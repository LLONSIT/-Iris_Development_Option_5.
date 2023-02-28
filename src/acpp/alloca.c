  typedef char	*pointer;		/* generic pointer type */
  
  #define	NULL	0			/* null pointer constant */

  extern void	free();
  extern pointer	xmalloc();

/*
	Define STACK_DIRECTION if you know the direction of stack
	growth for your system; otherwise it will be automatically
	deduced at run-time.

	STACK_DIRECTION > 0 => grows toward higher addresses
	STACK_DIRECTION < 0 => grows toward lower addresses
	STACK_DIRECTION = 0 => direction of growth unknown
*/

  #ifndef STACK_DIRECTION
  #define	STACK_DIRECTION	0		/* direction unknown */
  #endif

  #if STACK_DIRECTION != 0

  #define	STACK_DIR	STACK_DIRECTION	/* known at compile-time */
  
  #else	/* STACK_DIRECTION == 0; need run-time code */
  
  static int	stack_dir;		/* 1 or -1 once known */
  #define	STACK_DIR	stack_dir

  #ifndef	ALIGN_SIZE
  #define	ALIGN_SIZE	sizeof(double)
  #endif
  #endif

typedef union hdr
{
  char	align[ALIGN_SIZE];	/* to force sizeof(header) */
  struct
    {
      union hdr *next;		/* for chaining headers */
      char *deep;		/* for stack depth measure */
    } h;
} header;



static void find_stack_direction () {

  static char	*addr = NULL;	/* address of first
				   `dummy', once known */
  auto char	dummy;		/* to get stack address */

  if (addr == NULL)
    {				/* initial entry */
      addr = &dummy;

      find_stack_direction ();	/* recurse once */
    }
  else				/* second entry */
    if (&dummy > addr)
      stack_dir = 1;		/* stack grew upward */
    else
      stack_dir = -1;		/* stack grew downward */
}

static header *last_alloca_header = NULL; /* -> last alloca header */
pointer alloca(unsigned size)
{
  
    auto char probe;

 
    register char* depth = &probe;

#if STACK_DIRECTION == 0
  
    if (STACK_DIR == 0)
        find_stack_direction();
#endif

 
    {
       
        register header* hp;

     
        for (hp = last_alloca_header; hp != NULL;)
        {
            if (STACK_DIR > 0 && hp->h.deep > depth ||
                STACK_DIR < 0 && hp->h.deep < depth)
            {

        
                register header* np = hp->h.next;

                free((pointer)hp);

                hp = np;
            }
            else
            {

                break;
            }
        }


        last_alloca_header = hp;
    }


    if (size == 0)
        return NULL;


    {

        register pointer new = xmalloc(sizeof(header) + size);


        ((header*)new)->h.next = last_alloca_header;
        ((header*)new)->h.deep = depth;


        last_alloca_header = (header*)new;


        return (pointer)((char*)new + sizeof(header));
    }
}

