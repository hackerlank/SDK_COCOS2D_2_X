.class Lair/com/u8/sdk/demo/AppEntry$2;
.super Ljava/lang/Object;
.source "AppEntry.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lair/com/u8/sdk/demo/AppEntry;->showDialog(ILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lair/com/u8/sdk/demo/AppEntry;


# direct methods
.method constructor <init>(Lair/com/u8/sdk/demo/AppEntry;)V
    .locals 0

    iput-object p1, p0, Lair/com/u8/sdk/demo/AppEntry$2;->this$0:Lair/com/u8/sdk/demo/AppEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v3, 0x0

    # getter for: Lair/com/u8/sdk/demo/AppEntry;->sThis:Lair/com/u8/sdk/demo/AppEntry;
    invoke-static {}, Lair/com/u8/sdk/demo/AppEntry;->access$100()Lair/com/u8/sdk/demo/AppEntry;

    move-result-object v0

    # getter for: Lair/com/u8/sdk/demo/AppEntry;->AIR_PING_URL:Ljava/lang/String;
    invoke-static {}, Lair/com/u8/sdk/demo/AppEntry;->access$200()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v3, v3, v2}, Lcom/adobe/air/InstallOfferPingUtils;->PingAndExit(Landroid/app/Activity;Ljava/lang/String;ZZZ)V

    return-void
.end method