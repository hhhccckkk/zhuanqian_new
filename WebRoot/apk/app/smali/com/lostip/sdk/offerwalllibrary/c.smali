.class Lcom/lostip/sdk/offerwalllibrary/c;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;


# direct methods
.method constructor <init>(Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/c;->a:Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lostip.offerwall.action.close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/c;->a:Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/OfferWallActivity;->finish()V

    :cond_0
    return-void
.end method
