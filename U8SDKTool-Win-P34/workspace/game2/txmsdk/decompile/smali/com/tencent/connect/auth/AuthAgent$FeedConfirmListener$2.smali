.class Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$2;
.super Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$ButtonListener;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener;->a(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tauth/IUiListener;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener;


# direct methods
.method constructor <init>(Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener;Landroid/app/Dialog;Lcom/tencent/tauth/IUiListener;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 558
    iput-object p1, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$2;->c:Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener;

    iput-object p3, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$2;->a:Lcom/tencent/tauth/IUiListener;

    iput-object p4, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$2;->b:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$ButtonListener;-><init>(Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener;Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 562
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$2;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$2;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 563
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$2;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 565
    :cond_11
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$2;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_1c

    .line 566
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$2;->a:Lcom/tencent/tauth/IUiListener;

    iget-object v1, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$2;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    .line 568
    :cond_1c
    return-void
.end method