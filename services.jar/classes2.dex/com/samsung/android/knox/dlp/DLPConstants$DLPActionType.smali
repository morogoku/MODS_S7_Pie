.class public Lcom/samsung/android/knox/dlp/DLPConstants$DLPActionType;
.super Ljava/lang/Object;
.source "DLPConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/dlp/DLPConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DLPActionType"
.end annotation


# static fields
.field public static final DLP_ACTION_TYPE_CONSUME:Ljava/lang/String; = "DLP_CONSUME"

.field public static final DLP_ACTION_TYPE_KEY:Ljava/lang/String; = "Action"

.field public static final DLP_ACTION_TYPE_PROTECT:Ljava/lang/String; = "DLP_PROTECT"

.field public static final DLP_ACTION_TYPE_PROTECT_FORWARD:Ljava/lang/String; = "DLP_PROTECT_FORWARD"

.field public static final DLP_ACTION_TYPE_PROTECT_REPLY:Ljava/lang/String; = "DLP_PROTECT_REPLY"

.field public static final DLP_ACTION_TYPE_PROTECT_SAVE:Ljava/lang/String; = "DLP_PROTECT_SAVE"

.field public static final DLP_ACTION_TYPE_SAVE_AS:Ljava/lang/String; = "DLP_PROTECT_SAVE_AS"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
