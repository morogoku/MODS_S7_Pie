.class public final enum Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;
.super Ljava/lang/Enum;
.source "ActivationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TRIGGERS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum DO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum ELM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum KLM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum KME:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;


# instance fields
.field private final mId:I

.field private final mName:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v6, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const-string v1, "ELM"

    const-string v4, "ELM"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->ELM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    new-instance v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const-string v8, "KLM"

    const-string v11, "KLM"

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KLM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    new-instance v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const-string v2, "DO"

    const-string v5, "DO"

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v6, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->DO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    new-instance v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const-string v8, "PO"

    const-string v11, "PO"

    const/4 v9, 0x3

    const/16 v10, 0x8

    const/4 v12, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    new-instance v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const-string v2, "KME"

    const-string v5, "KES"

    const/4 v3, 0x4

    const/16 v4, 0x10

    const/4 v6, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KME:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    sget-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->ELM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KLM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->DO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KME:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->$VALUES:[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mValue:I

    iput-object p4, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mName:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;
    .registers 2

    const-class v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->$VALUES:[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mValue:I

    return v0
.end method
