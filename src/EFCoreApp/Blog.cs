namespace EFCoreApp;

public sealed class Blog
{
    public int BlogId { get; set; }

    public required string Url { get; set; }

    public List<Post> Posts { get; } = [];
}