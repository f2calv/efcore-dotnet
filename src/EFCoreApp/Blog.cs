namespace EFCoreApp;

/// <summary>Represents a blog and its posts.</summary>
public sealed class Blog
{
    public int BlogId { get; set; }

    public required string Url { get; set; }

    public List<Post> Posts { get; } = [];
}
