.class public Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final UpdateMethod_ByPatch:I = 0x4

.field public static final UpdateMethod_GenPatch:I = 0x3

.field public static final UpdateMethod_NoUpdate:I = 0x1

.field public static final UpdateMethod_NoneRecord:I = 0x0

.field public static final UpdateMethod_Normal:I = 0x2

.field public static final Update_OverwriteChannelid_Disable:B = 0x0t

.field public static final Update_OverwriteChannelid_Enable:B = 0x1t


# instance fields
.field public fileMd5:Ljava/lang/String;

.field public newFeature:Ljava/lang/String;

.field public newapksize:I

.field public overwriteChannelid:B

.field public packageName:Ljava/lang/String;

.field public patchsize:I

.field public sigMd5:Ljava/lang/String;

.field public updatemethod:I

.field public url:Ljava/lang/String;

.field public versioncode:I

.field public versionname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method