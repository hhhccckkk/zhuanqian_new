.class Lcn/sharesdk/sina/weibo/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/a;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/sina/weibo/b;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/b;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/a;->a(Lcn/sharesdk/sina/weibo/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/b;->a:Lcn/sharesdk/sina/weibo/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/a;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
