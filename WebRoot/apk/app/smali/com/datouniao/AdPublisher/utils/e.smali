.class Lcom/datouniao/AdPublisher/utils/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/datouniao/AdPublisher/utils/c;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/datouniao/AdPublisher/utils/c;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/utils/e;->a:Lcom/datouniao/AdPublisher/utils/c;

    iput-object p2, p0, Lcom/datouniao/AdPublisher/utils/e;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/datouniao/AdPublisher/utils/e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/datouniao/AdPublisher/utils/e;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/utils/e;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
