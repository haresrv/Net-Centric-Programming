<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <table width="250px" style="margin:0 auto;text-align:center" border="1">
   <tr >
      <th colspan='3'>
         Accounts
      </th>
   </tr>
   <tr >
      <th colspan='3'>
         Savings Accounts
      </th>
   </tr>
   
   <tr >
      <th>Id</th>
      <th>Interest</th>
      <th>Balance</th>
   </tr>
    <xsl:for-each select="/bank/accounts/savings_accounts/savings_account">
   	<tr >
      <td><xsl:value-of select="@id"/></td>
      <td><xsl:value-of select="@interest"/></td>
      <td><xsl:value-of select="balance"/></td>
   </tr>
 	</xsl:for-each>
   <tr >
      <th colspan='3'>
         Checking Accounts
      </th>
   </tr>
   
   <tr >
      <th>Id</th>
      <th colspan='2'>Balance</th>
   </tr>
   
   <xsl:for-each select="/bank/accounts/savings_accounts/savings_account">
   	<tr >
      <td><xsl:value-of select="@id"/></td>
      <td colspan='2'><xsl:value-of select="balance"/></td>
   </tr>
 	</xsl:for-each>
 	
   
   <tr >
      <th colspan='3'>
         Customers
      </th>
   </tr>
   
   <tr >
      <th>Id</th>
      <th>Name</th>
      <th>Address</th>
   </tr>
   
 	<xsl:for-each select="/bank/customers/customer">
   	<tr >
      <td><xsl:value-of select="@id"/></td>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="address"/></td>
   </tr>
 	</xsl:for-each>
 	
   <tr >
      <th colspan='3'>
         Customers-Accounts Relation
      </th>
   </tr>
   
   <tr >
      <th  colspan='2'>Customer Id</th>
      <th>Account Id</th>
   </tr>
   
 	<xsl:for-each select="/bank/customer_accounts/customer_account">
   	<tr >
      <td colspan='2'><xsl:value-of select="@c_id"/></td>
      <td><xsl:value-of select="@ac_id"/></td>
   </tr>
 	</xsl:for-each>
 	
 	
 	
  </table>
  </html>
</xsl:template>

</xsl:stylesheet>
