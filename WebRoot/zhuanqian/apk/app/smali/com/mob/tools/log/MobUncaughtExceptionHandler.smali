.class public Lcom/mob/tools/log/MobUncaughtExceptionHandler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static disable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disable()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mob/tools/log/MobUncaughtExceptionHandler;->disable:Z

    return-void
.end method

.method public static register()V
    .locals 1

    sget-boolean v0, Lcom/mob/tools/log/MobUncaughtExceptionHandler;->disable:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/mob/tools/log/MobUncaughtExceptionHandler;

    invoke-direct {v0}, Lcom/mob/tools/log/MobUncaughtExceptionHandler;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "thread"
    .parameter "ex"

    .prologue
    const-string v0, "MobUncaughtExceptionHandler"

    invoke-static {v0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mob/tools/log/NLog;->crash(Ljava/lang/Throwable;)I

    return-void
.end method
