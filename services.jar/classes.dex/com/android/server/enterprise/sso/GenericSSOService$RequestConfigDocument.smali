.class Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
.super Ljava/lang/Object;
.source "GenericSSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestConfigDocument"
.end annotation


# instance fields
.field XMLDoc:Lorg/w3c/dom/Document;

.field private enrolledVendor:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Document;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->enrolledVendor:Lorg/w3c/dom/Node;

    iput-object p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->update()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->update()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method private getEnrolledSSOPackageName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->enrolledVendor:Lorg/w3c/dom/Node;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->enrolledVendor:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string/jumbo v1, "servicepackagename"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->enrolledVendor:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method private update()V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->updateEnrolledSSOVendor()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    :cond_3
    :goto_3
    goto :goto_1e

    :catch_4
    move-exception v0

    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_1e

    const-string v1, "GenericSSOService"

    const-string v2, "In update: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    :catch_11
    move-exception v0

    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "GenericSSOService"

    const-string v2, "In update: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_1e
    :goto_1e
    return-void
.end method

.method private updateEnrolledSSOVendor()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->enrolledVendor:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_3c

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-nez v2, :cond_16

    goto :goto_3c

    :cond_16
    const/4 v2, 0x0

    :goto_17
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_3b

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_38

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ssoprovider"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    iput-object v3, p0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->enrolledVendor:Lorg/w3c/dom/Node;

    return-void

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_3b
    return-void

    :cond_3c
    :goto_3c
    return-void
.end method
