.class final Lcom/tencent/stat/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/stat/q;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/tencent/stat/q;->a:Landroid/content/Context;

    if-nez v0, :cond_e

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->f()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "The Context of StatService.reportNativeCrash() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_d
    return-void

    :cond_e
    :try_start_e
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/stat/ao;

    iget-object v2, p0, Lcom/tencent/stat/q;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/stat/ao;-><init>(Landroid/content/Context;)V

    const-string v2, "NativeCrashRepoter"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1f} :catch_20

    goto :goto_d

    :catch_20
    move-exception v0

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->f()Lcom/tencent/stat/common/StatLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/tencent/stat/q;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/stat/StatServiceImpl;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_d
.end method