.class public Lcn/sharesdk/framework/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# instance fields
.field private a:Lcn/sharesdk/framework/PlatformActionListener;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcn/sharesdk/framework/Platform;",
            "Lcn/sharesdk/framework/Platform$ShareParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/a;->b:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/framework/a;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/framework/a;Lcn/sharesdk/framework/PlatformActionListener;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p1
.end method

.method private a(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const/16 v1, 0xf

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "nickname"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "icon"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "gender"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "snsUserUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "resume"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "secretType"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "secret"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "birthday"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "followerCount"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "favouriteCount"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "shareCount"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "snsregat"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "snsUserLevel"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "educationJSONArrayStr"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "workJSONArrayStr"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/PlatformDb;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcn/sharesdk/framework/PlatformDb;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x7c

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, p2

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v5, :cond_2

    aget-object v6, p2, v0

    if-lez v2, :cond_0

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v6}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "utf-8"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "======UserData: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/framework/a;Lcn/sharesdk/framework/Platform;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ILcn/sharesdk/framework/Platform;)V
    .locals 0

    return-void
.end method

.method private a(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Lcn/sharesdk/framework/b;

    invoke-direct {v1, p0, v0, p2, p3}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/a;Lcn/sharesdk/framework/PlatformActionListener;ILjava/util/HashMap;)V

    iput-object v1, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform;->showUser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/framework/a;ILcn/sharesdk/framework/Platform;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/sharesdk/framework/a;->a(ILcn/sharesdk/framework/Platform;)V

    return-void
.end method

.method private b(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const/4 v1, 0x5

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "gender"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "birthday"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "secretType"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "educationJSONArrayStr"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "workJSONArrayStr"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/PlatformDb;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/sharesdk/framework/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform$ShareParams;

    if-eqz p3, :cond_5

    const-string v0, "ShareParams"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform$ShareParams;

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform$ShareParams;->toMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>(Ljava/util/HashMap;)V

    :cond_0
    :try_start_0
    invoke-virtual {p3}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :goto_1
    if-eqz v2, :cond_2

    new-instance v3, Lcn/sharesdk/framework/statistics/b/f;

    invoke-direct {v3}, Lcn/sharesdk/framework/statistics/b/f;-><init>()V

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform$ShareParams;->getCustomFlag()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcn/sharesdk/framework/statistics/b/f;->o:[Ljava/lang/String;

    const-string v0, "TencentWeibo"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v4, "name"

    invoke-virtual {v0, v4}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, v3, Lcn/sharesdk/framework/statistics/b/f;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v0

    iput v0, v3, Lcn/sharesdk/framework/statistics/b/f;->a:I

    invoke-virtual {p1, v2, v1}, Lcn/sharesdk/framework/Platform;->filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/statistics/b/f$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcn/sharesdk/framework/statistics/b/f$a;->a:Ljava/lang/String;

    iput-object v1, v3, Lcn/sharesdk/framework/statistics/b/f;->c:Ljava/lang/String;

    iput-object v0, v3, Lcn/sharesdk/framework/statistics/b/f;->d:Lcn/sharesdk/framework/statistics/b/f$a;

    :cond_1
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/a;->b(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcn/sharesdk/framework/statistics/b/f;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/framework/statistics/d;->a(Landroid/content/Context;)Lcn/sharesdk/framework/statistics/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/sharesdk/framework/statistics/d;->a(Lcn/sharesdk/framework/statistics/b/c;)V

    :cond_2
    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_3
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lcn/sharesdk/framework/a;->a(ILcn/sharesdk/framework/Platform;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v1, p3

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_5
    move-object v2, v0

    goto/16 :goto_0
.end method


# virtual methods
.method a()Lcn/sharesdk/framework/PlatformActionListener;
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method a(Lcn/sharesdk/framework/Platform;ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Lcn/sharesdk/framework/c;

    invoke-direct {v1, p0, v0, p2, p3}, Lcn/sharesdk/framework/c;-><init>(Lcn/sharesdk/framework/a;Lcn/sharesdk/framework/PlatformActionListener;ILjava/lang/Object;)V

    iput-object v1, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform;->doAuthorize([Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/framework/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method a(Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    return-void
.end method

.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 1
    .parameter "platform"
    .parameter "action"

    .prologue
    packed-switch p2, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p1, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/sharesdk/framework/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 1
    .parameter "platform"
    .parameter "action"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    instance-of v0, p1, Lcn/sharesdk/framework/CustomPlatform;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sparse-switch p2, :sswitch_data_0

    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_0

    :sswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcn/sharesdk/framework/a;->b(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 1
    .parameter "platform"
    .parameter "action"
    .parameter "t"

    .prologue
    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/framework/a;->a:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method
