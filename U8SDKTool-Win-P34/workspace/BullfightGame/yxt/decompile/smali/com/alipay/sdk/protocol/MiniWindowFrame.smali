.class public Lcom/alipay/sdk/protocol/MiniWindowFrame;
.super Lcom/alipay/sdk/protocol/WindowData;
.source "SourceFile"


# instance fields
.field private h:I

.field private i:Z


# direct methods
.method protected constructor <init>(Lcom/alipay/sdk/data/Request;Lcom/alipay/sdk/data/Response;)V
    .registers 4

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/alipay/sdk/protocol/WindowData;-><init>(Lcom/alipay/sdk/data/Request;Lcom/alipay/sdk/data/Response;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->i:Z

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/alipay/sdk/protocol/WindowData;->a(Lorg/json/JSONObject;)V

    .line 67
    const-string v1, "form"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 68
    const-string v1, "form"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 69
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    const-string v3, "oneTime"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 72
    invoke-virtual {p0, v3}, Lcom/alipay/sdk/protocol/MiniWindowFrame;->b(Z)V

    .line 73
    const-string v3, "page"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->i:Z

    .line 76
    const/16 v0, 0x9

    iput v0, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->h:I

    .line 109
    :cond_34
    :goto_34
    return-void

    .line 77
    :cond_35
    const-string v3, "dialog"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 78
    const/4 v1, 0x7

    iput v1, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->h:I

    .line 79
    iput-boolean v0, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->i:Z

    goto :goto_34

    .line 80
    :cond_43
    const-string v3, "toast"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 82
    const-string v2, "onload"

    invoke-static {v1, v2}, Lcom/alipay/sdk/protocol/ElementAction;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/sdk/protocol/ElementAction;

    move-result-object v1

    .line 84
    const/4 v2, 0x6

    iput v2, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->h:I

    .line 85
    if-eqz v1, :cond_34

    .line 86
    invoke-static {v1}, Lcom/alipay/sdk/protocol/ActionType;->a(Lcom/alipay/sdk/protocol/ElementAction;)[Lcom/alipay/sdk/protocol/ActionType;

    move-result-object v1

    .line 87
    array-length v2, v1

    :goto_5b
    if-ge v0, v2, :cond_34

    aget-object v3, v1, v0

    .line 88
    sget-object v4, Lcom/alipay/sdk/protocol/ActionType;->e:Lcom/alipay/sdk/protocol/ActionType;

    if-eq v3, v4, :cond_67

    sget-object v4, Lcom/alipay/sdk/protocol/ActionType;->f:Lcom/alipay/sdk/protocol/ActionType;

    if-ne v3, v4, :cond_6b

    .line 89
    :cond_67
    const/16 v3, 0xa

    iput v3, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->h:I

    .line 87
    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 94
    :cond_6e
    const-string v0, "confirm"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 97
    const-string v0, "fullscreen"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->i:Z

    .line 98
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->h:I

    goto :goto_34

    .line 101
    :cond_82
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/alipay/sdk/protocol/MiniStatus;->a(Ljava/lang/String;)Lcom/alipay/sdk/protocol/MiniStatus;

    move-result-object v0

    .line 103
    sget-object v1, Lcom/alipay/sdk/protocol/MiniStatus;->h:Lcom/alipay/sdk/protocol/MiniStatus;

    if-ne v0, v1, :cond_95

    .line 104
    const/16 v0, -0xa

    iput v0, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->h:I

    goto :goto_34

    .line 106
    :cond_95
    const/16 v0, 0x8

    iput v0, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->h:I

    goto :goto_34
.end method

.method public f()Z
    .registers 3

    .prologue
    .line 37
    iget v0, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->h:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->h:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_d

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public g()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->h:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->i:Z

    return v0
.end method
